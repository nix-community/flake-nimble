{
  description = ''wrapper for the sendmail command'';
  inputs.src-easymail-v0_1_0.flake = false;
  inputs.src-easymail-v0_1_0.type = "github";
  inputs.src-easymail-v0_1_0.owner = "coocheenin";
  inputs.src-easymail-v0_1_0.repo = "easymail";
  inputs.src-easymail-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-easymail-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easymail-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easymail-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}