{
  description = ''wrapper for kexpr math expression evaluation library'';
  inputs.src-kexpr-v0_0_2.flake = false;
  inputs.src-kexpr-v0_0_2.type = "github";
  inputs.src-kexpr-v0_0_2.owner = "brentp";
  inputs.src-kexpr-v0_0_2.repo = "kexpr-nim";
  inputs.src-kexpr-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-kexpr-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kexpr-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kexpr-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}