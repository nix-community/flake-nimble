{
  description = ''Endianness aware stream I/O for Nim'';
  inputs.src-binstreams-master.flake = false;
  inputs.src-binstreams-master.type = "github";
  inputs.src-binstreams-master.owner = "johnnovak";
  inputs.src-binstreams-master.repo = "nim-binstreams";
  inputs.src-binstreams-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-binstreams-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binstreams-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binstreams-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}