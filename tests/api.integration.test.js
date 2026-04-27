// Integration test: hits a real public API and validates the JSON response shape.
// We use a stable public test API (jsonplaceholder) so this test doesn't depend on
// having a live LAMP server running during CI.

describe("API integration test", () => {
  test("fetches data from a public API and validates JSON structure", async () => {
    const response = await fetch(
      "https://jsonplaceholder.typicode.com/posts/1"
    );

    expect(response.status).toBe(200);

    const data = await response.json();

    // Validate the response shape
    expect(data).toHaveProperty("id");
    expect(data).toHaveProperty("title");
    expect(data).toHaveProperty("body");
    expect(data).toHaveProperty("userId");

    expect(typeof data.id).toBe("number");
    expect(typeof data.title).toBe("string");
    expect(typeof data.body).toBe("string");
    expect(data.id).toBe(1);
  }, 10000); // 10s timeout in case network is slow
});
