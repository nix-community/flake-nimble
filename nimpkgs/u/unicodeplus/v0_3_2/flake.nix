{
  description = ''Common unicode operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unicodeplus-v0_3_2.flake = false;
  inputs.src-unicodeplus-v0_3_2.type = "github";
  inputs.src-unicodeplus-v0_3_2.owner = "nitely";
  inputs.src-unicodeplus-v0_3_2.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_3_2.ref = "refs/tags/v0.3.2";
  inputs.src-unicodeplus-v0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodeplus-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}