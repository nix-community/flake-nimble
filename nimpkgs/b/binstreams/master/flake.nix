{
  description = ''Endianness aware stream I/O for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-binstreams-master.flake = false;
  inputs.src-binstreams-master.type = "github";
  inputs.src-binstreams-master.owner = "johnnovak";
  inputs.src-binstreams-master.repo = "nim-binstreams";
  inputs.src-binstreams-master.ref = "refs/heads/master";
  inputs.src-binstreams-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-binstreams-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binstreams-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binstreams-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}