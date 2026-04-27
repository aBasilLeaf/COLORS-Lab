const {
  isValidHexColor,
  normalizeHex,
  isNonEmptyColorName,
} = require("../public/js/colorUtils");

describe("isValidHexColor", () => {
  test("accepts valid 6-digit hex codes", () => {
    expect(isValidHexColor("#FFFFFF")).toBe(true);
    expect(isValidHexColor("#000000")).toBe(true);
    expect(isValidHexColor("#a1b2c3")).toBe(true);
  });

  test("accepts valid 3-digit hex codes", () => {
    expect(isValidHexColor("#FFF")).toBe(true);
    expect(isValidHexColor("#abc")).toBe(true);
  });

  test("rejects invalid hex codes", () => {
    expect(isValidHexColor("FFFFFF")).toBe(false);     // missing #
    expect(isValidHexColor("#GGGGGG")).toBe(false);    // bad chars
    expect(isValidHexColor("#FFFF")).toBe(false);      // wrong length
    expect(isValidHexColor("")).toBe(false);
    expect(isValidHexColor(null)).toBe(false);
    expect(isValidHexColor(123456)).toBe(false);
  });
});

describe("normalizeHex", () => {
  test("returns uppercase hex for valid input", () => {
    expect(normalizeHex("#abcdef")).toBe("#ABCDEF");
  });

  test("returns null for invalid input", () => {
    expect(normalizeHex("nope")).toBe(null);
  });
});

describe("isNonEmptyColorName", () => {
  test("accepts non-empty strings", () => {
    expect(isNonEmptyColorName("Red")).toBe(true);
    expect(isNonEmptyColorName("  Sky Blue  ")).toBe(true);
  });

  test("rejects empty or whitespace-only strings", () => {
    expect(isNonEmptyColorName("")).toBe(false);
    expect(isNonEmptyColorName("   ")).toBe(false);
    expect(isNonEmptyColorName(null)).toBe(false);
  });
});
