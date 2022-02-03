{
  description = ''IUP FFI bindings'';
  inputs.src-niup-v3_30_5.flake = false;
  inputs.src-niup-v3_30_5.type = "github";
  inputs.src-niup-v3_30_5.owner = "dariolah";
  inputs.src-niup-v3_30_5.repo = "niup";
  inputs.src-niup-v3_30_5.ref = "refs/tags/v3.30.5";
  
  outputs = { self, nixpkgs, src-niup-v3_30_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-v3_30_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-v3_30_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}