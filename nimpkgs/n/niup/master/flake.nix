{
  description = ''IUP FFI bindings'';
  inputs.src-niup-master.flake = false;
  inputs.src-niup-master.type = "github";
  inputs.src-niup-master.owner = "dariolah";
  inputs.src-niup-master.repo = "niup";
  inputs.src-niup-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-niup-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}