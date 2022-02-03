{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
  inputs.src-gyaric-v1_0_1.flake = false;
  inputs.src-gyaric-v1_0_1.type = "github";
  inputs.src-gyaric-v1_0_1.owner = "jiro4989";
  inputs.src-gyaric-v1_0_1.repo = "gyaric";
  inputs.src-gyaric-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-gyaric-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gyaric-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gyaric-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}