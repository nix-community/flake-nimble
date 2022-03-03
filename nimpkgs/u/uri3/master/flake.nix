{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uri3-master.flake = false;
  inputs.src-uri3-master.type = "github";
  inputs.src-uri3-master.owner = "zendbit";
  inputs.src-uri3-master.repo = "nim.uri3";
  inputs.src-uri3-master.ref = "refs/heads/master";
  inputs.src-uri3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uri3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uri3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}