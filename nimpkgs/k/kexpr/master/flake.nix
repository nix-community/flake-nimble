{
  description = ''wrapper for kexpr math expression evaluation library'';
  inputs.src-kexpr-master.flake = false;
  inputs.src-kexpr-master.type = "github";
  inputs.src-kexpr-master.owner = "brentp";
  inputs.src-kexpr-master.repo = "kexpr-nim";
  inputs.src-kexpr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kexpr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kexpr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kexpr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}