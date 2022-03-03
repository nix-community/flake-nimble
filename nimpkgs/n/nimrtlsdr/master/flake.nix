{
  description = ''A Nim wrapper for librtlsdr'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimrtlsdr-master.flake = false;
  inputs.src-nimrtlsdr-master.type = "github";
  inputs.src-nimrtlsdr-master.owner = "jpoirier";
  inputs.src-nimrtlsdr-master.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-master.ref = "refs/heads/master";
  inputs.src-nimrtlsdr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrtlsdr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrtlsdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}