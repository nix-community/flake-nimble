{
  description = ''ed25519 key crypto bindings'';
  inputs.src-ed25519-master.flake = false;
  inputs.src-ed25519-master.type = "github";
  inputs.src-ed25519-master.owner = "niv";
  inputs.src-ed25519-master.repo = "ed25519.nim";
  inputs.src-ed25519-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ed25519-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ed25519-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ed25519-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}