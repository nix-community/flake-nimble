{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-v0_3_2.flake = false;
  inputs.src-nesm-v0_3_2.type = "gitlab";
  inputs.src-nesm-v0_3_2.owner = "xomachine";
  inputs.src-nesm-v0_3_2.repo = "NESM";
  inputs.src-nesm-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-nesm-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}