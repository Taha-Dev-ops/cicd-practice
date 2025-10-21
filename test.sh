#!/bin/bash
echo "🚀 Starting CI/CD Tests..."
echo "=========================="

# Test 1: Check if HTML file exists
if [ -f "index.html" ]; then
    echo "✅ PASS: HTML file exists"
else
    echo "❌ FAIL: HTML file missing"
    exit 1
fi

# Test 2: Check if HTML has valid structure
if grep -q "<html>" index.html && grep -q "</html>" index.html; then
    echo "✅ PASS: HTML structure is valid"
else
    echo "❌ FAIL: HTML structure is invalid"
    exit 1
fi

# Test 3: Check if title exists
if grep -q "<title>" index.html; then
    echo "✅ PASS: Title tag found"
else
    echo "❌ FAIL: Title tag missing"
    exit 1
fi

# Test 4: Check if our name exists in HTML
if grep -q "Taha" index.html; then
    echo "✅ PASS: Taha's name found in code"
else
    echo "❌ FAIL: Taha's name missing"
    exit 1
fi

echo "=========================="
echo "🎉 All tests passed! Ready for deployment."
