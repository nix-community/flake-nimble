{
  description = ''Common unicode operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unicodeplus-v0_1_1.flake = false;
  inputs.src-unicodeplus-v0_1_1.type = "github";
  inputs.src-unicodeplus-v0_1_1.owner = "nitely";
  inputs.src-unicodeplus-v0_1_1.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-unicodeplus-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodeplus-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}