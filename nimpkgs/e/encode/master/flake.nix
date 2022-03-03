{
  description = ''Encode/decode utf8 utf16 and utf32.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-encode-master.flake = false;
  inputs.src-encode-master.type = "github";
  inputs.src-encode-master.owner = "treeform";
  inputs.src-encode-master.repo = "encode";
  inputs.src-encode-master.ref = "refs/heads/master";
  inputs.src-encode-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-encode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-encode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-encode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}