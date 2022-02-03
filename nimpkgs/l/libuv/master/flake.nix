{
  description = ''libuv bindings for Nim'';
  inputs.src-libuv-master.flake = false;
  inputs.src-libuv-master.type = "github";
  inputs.src-libuv-master.owner = "lcrees";
  inputs.src-libuv-master.repo = "libuv";
  inputs.src-libuv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libuv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libuv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libuv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}