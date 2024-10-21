package patterns

import "testing"

func TestFactorial(t *testing.T) {
	expected := 120
	result := factorial(5)

	if result != expected {
		t.Errorf("factorial() = %v; want %v", result, expected)
	}
}
