{
  description = ''Unicode Character Database (UCD) access for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unicodedb-v0_2_2.flake = false;
  inputs.src-unicodedb-v0_2_2.type = "github";
  inputs.src-unicodedb-v0_2_2.owner = "nitely";
  inputs.src-unicodedb-v0_2_2.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-unicodedb-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodedb-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}