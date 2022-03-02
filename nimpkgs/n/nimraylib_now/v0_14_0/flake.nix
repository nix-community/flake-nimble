{
  description = ''The Ultimate Raylib gaming library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimraylib_now-v0_14_0.flake = false;
  inputs.src-nimraylib_now-v0_14_0.type = "github";
  inputs.src-nimraylib_now-v0_14_0.owner = "greenfork";
  inputs.src-nimraylib_now-v0_14_0.repo = "nimraylib_now";
  inputs.src-nimraylib_now-v0_14_0.ref = "refs/tags/v0.14.0";
  inputs.src-nimraylib_now-v0_14_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimraylib_now-v0_14_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimraylib_now-v0_14_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimraylib_now-v0_14_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}