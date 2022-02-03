{
  description = ''RC4 library implementation'';
  inputs.src-RC4-master.flake = false;
  inputs.src-RC4-master.type = "github";
  inputs.src-RC4-master.owner = "OHermesJunior";
  inputs.src-RC4-master.repo = "nimRC4";
  inputs.src-RC4-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-RC4-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RC4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-RC4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}