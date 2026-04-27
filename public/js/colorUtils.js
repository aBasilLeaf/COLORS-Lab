// Pure utility functions for color handling.
// Kept in their own module so they can be unit tested.

function isValidHexColor(hex) {
  if (typeof hex !== "string") return false;
  return /^#([0-9A-Fa-f]{3}|[0-9A-Fa-f]{6})$/.test(hex);
}

function normalizeHex(hex) {
  if (!isValidHexColor(hex)) return null;
  return hex.toUpperCase();
}

function isNonEmptyColorName(name) {
  return typeof name === "string" && name.trim().length > 0;
}

// Export for Node.js (Jest) — ignored by the browser
if (typeof module !== "undefined" && module.exports) {
  module.exports = { isValidHexColor, normalizeHex, isNonEmptyColorName };
}
