{
  description = ''A MessagePack binding for Nim'';
  inputs.src-msgpack-master.flake = false;
  inputs.src-msgpack-master.type = "github";
  inputs.src-msgpack-master.owner = "akiradeveloper";
  inputs.src-msgpack-master.repo = "msgpack-nim";
  inputs.src-msgpack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-msgpack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-msgpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}