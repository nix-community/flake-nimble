{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_3_1.flake = false;
  inputs.src-nesm-v0_3_1.type = "gitlab";
  inputs.src-nesm-v0_3_1.owner = "xomachine";
  inputs.src-nesm-v0_3_1.repo = "NESM";
  inputs.src-nesm-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-nesm-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}