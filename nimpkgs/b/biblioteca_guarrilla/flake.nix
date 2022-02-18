{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."biblioteca_guarrilla-master".type = "github";
  inputs."biblioteca_guarrilla-master".owner = "riinr";
  inputs."biblioteca_guarrilla-master".repo = "flake-nimble";
  inputs."biblioteca_guarrilla-master".ref = "flake-pinning";
  inputs."biblioteca_guarrilla-master".dir = "nimpkgs/b/biblioteca_guarrilla/master";

    inputs."biblioteca_guarrilla-0_1_5".type = "github";
  inputs."biblioteca_guarrilla-0_1_5".owner = "riinr";
  inputs."biblioteca_guarrilla-0_1_5".repo = "flake-nimble";
  inputs."biblioteca_guarrilla-0_1_5".ref = "flake-pinning";
  inputs."biblioteca_guarrilla-0_1_5".dir = "nimpkgs/b/biblioteca_guarrilla/0_1_5";

    inputs."biblioteca_guarrilla-0_1_8".type = "github";
  inputs."biblioteca_guarrilla-0_1_8".owner = "riinr";
  inputs."biblioteca_guarrilla-0_1_8".repo = "flake-nimble";
  inputs."biblioteca_guarrilla-0_1_8".ref = "flake-pinning";
  inputs."biblioteca_guarrilla-0_1_8".dir = "nimpkgs/b/biblioteca_guarrilla/0_1_8";

    inputs."biblioteca_guarrilla-0_1_9".type = "github";
  inputs."biblioteca_guarrilla-0_1_9".owner = "riinr";
  inputs."biblioteca_guarrilla-0_1_9".repo = "flake-nimble";
  inputs."biblioteca_guarrilla-0_1_9".ref = "flake-pinning";
  inputs."biblioteca_guarrilla-0_1_9".dir = "nimpkgs/b/biblioteca_guarrilla/0_1_9";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}