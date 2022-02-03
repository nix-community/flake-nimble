{
  description = ''3DES native library for Nim'';
  inputs.src-des-master.flake = false;
  inputs.src-des-master.type = "github";
  inputs.src-des-master.owner = "LucaWolf";
  inputs.src-des-master.repo = "des.nim";
  inputs.src-des-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-des-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-des-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-des-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}