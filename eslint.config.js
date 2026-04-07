export default [
  {
    files: ["public/**/*.js"],
    languageOptions: {
      globals: {
        md5: "readonly",
        document: "readonly",
        window: "readonly",
        alert: "readonly",
        fetch: "readonly",
        console: "readonly"
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-undef": "warn",
      "semi": ["warn", "always"]
    }
  }
];
