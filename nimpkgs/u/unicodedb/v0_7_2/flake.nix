{
  description = ''Unicode Character Database (UCD) access for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unicodedb-v0_7_2.flake = false;
  inputs.src-unicodedb-v0_7_2.type = "github";
  inputs.src-unicodedb-v0_7_2.owner = "nitely";
  inputs.src-unicodedb-v0_7_2.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_7_2.ref = "refs/tags/v0.7.2";
  inputs.src-unicodedb-v0_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodedb-v0_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}