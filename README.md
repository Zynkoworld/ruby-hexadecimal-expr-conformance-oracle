# zynko-oracle · `ruby-hexadecimal-expr-conformance-oracle`

**A deterministic, re-checkable conformance oracle for `hexadecimal` (ruby).**

## Proven
Measured on the canonical Exercism corpus — **10 input/output pairs, 9 distinct outputs** — produced by *running* the reference in a sealed sandbox, not asserted.

## Scope (declared)
The corpus is the canonical Exercism test data for `hexadecimal`. Inputs outside that set are **not covered**; this oracle decides agreement on the published corpus only and makes no claim of general correctness.

## Provenance
Reference: the Exercism reference solution for `hexadecimal` (ruby; MIT, Exercism), body unchanged. Proven by the exercism testsuite (pin=5bc5be3e45bdadce), re-executed by harvest in a sealed sandbox (unshare -rn) before this bundle was generated.

## License
Apache-2.0 for the scaffolding; the reference body retains its upstream MIT (Exercism) license.
