{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
  inputs.src-uri3-master.flake = false;
  inputs.src-uri3-master.type = "github";
  inputs.src-uri3-master.owner = "zendbit";
  inputs.src-uri3-master.repo = "nim.uri3";
  inputs.src-uri3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-uri3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uri3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}