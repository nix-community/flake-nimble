{
  description = ''Password generator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-npg-0_2_0.flake = false;
  inputs.src-npg-0_2_0.type = "github";
  inputs.src-npg-0_2_0.owner = "rustomax";
  inputs.src-npg-0_2_0.repo = "npg";
  inputs.src-npg-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-npg-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."passgen".type = "github";
  # inputs."passgen".owner = "riinr";
  # inputs."passgen".repo = "flake-nimble";
  # inputs."passgen".ref = "flake-pinning";
  # inputs."passgen".dir = "nimpkgs/p/passgen";
  # inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-npg-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npg-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npg-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}