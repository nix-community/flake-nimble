{
  description = ''Another MessagePack implementation written in pure nim'';
  inputs.src-msgpack4nim-master.flake = false;
  inputs.src-msgpack4nim-master.type = "github";
  inputs.src-msgpack4nim-master.owner = "jangko";
  inputs.src-msgpack4nim-master.repo = "msgpack4nim";
  inputs.src-msgpack4nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-msgpack4nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-msgpack4nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-msgpack4nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}