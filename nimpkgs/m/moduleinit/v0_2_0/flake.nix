{
  description = ''Nim module/thread initialisation ordering library'';
  inputs.src-moduleinit-v0_2_0.flake = false;
  inputs.src-moduleinit-v0_2_0.type = "github";
  inputs.src-moduleinit-v0_2_0.owner = "skunkiferous";
  inputs.src-moduleinit-v0_2_0.repo = "moduleinit";
  inputs.src-moduleinit-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-moduleinit-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moduleinit-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moduleinit-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}