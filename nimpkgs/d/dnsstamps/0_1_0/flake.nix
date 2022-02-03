{
  description = ''An implementation of DNS server stamps in Nim'';
  inputs.src-dnsstamps-0_1_0.flake = false;
  inputs.src-dnsstamps-0_1_0.type = "github";
  inputs.src-dnsstamps-0_1_0.owner = "alaviss";
  inputs.src-dnsstamps-0_1_0.repo = "dnsstamps";
  inputs.src-dnsstamps-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-dnsstamps-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsstamps-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsstamps-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}