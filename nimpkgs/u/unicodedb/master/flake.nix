{
  description = ''Unicode Character Database (UCD) access for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unicodedb-master.flake = false;
  inputs.src-unicodedb-master.type = "github";
  inputs.src-unicodedb-master.owner = "nitely";
  inputs.src-unicodedb-master.repo = "nim-unicodedb";
  inputs.src-unicodedb-master.ref = "refs/heads/master";
  inputs.src-unicodedb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodedb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}