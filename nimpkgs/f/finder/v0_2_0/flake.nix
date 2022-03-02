{
  description = ''fs memory zip finder implement in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-finder-v0_2_0.flake = false;
  inputs.src-finder-v0_2_0.type = "github";
  inputs.src-finder-v0_2_0.owner = "bung87";
  inputs.src-finder-v0_2_0.repo = "finder";
  inputs.src-finder-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-finder-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-finder-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-finder-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-finder-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}