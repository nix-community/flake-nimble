{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_27_2.flake = false;
  inputs.src-niup-3_27_2.type = "github";
  inputs.src-niup-3_27_2.owner = "dariolah";
  inputs.src-niup-3_27_2.repo = "niup";
  inputs.src-niup-3_27_2.ref = "refs/tags/3.27.2";
  
  outputs = { self, nixpkgs, src-niup-3_27_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_27_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}