{
  description = ''Fast and unsafe byte buffering for intensive network data transfer.'';
  inputs.src-netbuff-v0_1_1.flake = false;
  inputs.src-netbuff-v0_1_1.type = "github";
  inputs.src-netbuff-v0_1_1.owner = "jakubDoka";
  inputs.src-netbuff-v0_1_1.repo = "netbuff";
  inputs.src-netbuff-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-netbuff-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netbuff-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-netbuff-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}