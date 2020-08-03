# analyse-stdenv

When working on the darwin stdenv I did not find the composition of the stages
obvious. To help understand what is built and when I created this method of
showing which packages are contributed by each phase.

The report contains all the of the derivations in the closure for
`nix-instantiate -A hello` grouped by the stdenv that built them. It's a rough
hueristic but succifiently effective.

It's not with some quirks, for example each stdenv appears twice. Once for
`stdenv` and once for `stdenvNoCC`.

See <tt>example-report.md</tt>.
