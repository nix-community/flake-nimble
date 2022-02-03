{
  description = ''High-level libsodium bindings'';
  inputs.src-sodium-master.flake = false;
  inputs.src-sodium-master.type = "github";
  inputs.src-sodium-master.owner = "zielmicha";
  inputs.src-sodium-master.repo = "libsodium.nim";
  inputs.src-sodium-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sodium-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sodium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sodium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}