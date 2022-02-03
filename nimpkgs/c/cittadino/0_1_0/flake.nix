{
  description = ''A simple PubSub framework using STOMP.'';
  inputs.src-cittadino-0_1_0.flake = false;
  inputs.src-cittadino-0_1_0.type = "github";
  inputs.src-cittadino-0_1_0.owner = "makingspace";
  inputs.src-cittadino-0_1_0.repo = "cittadino";
  inputs.src-cittadino-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."stomp".url = "path:../../../s/stomp";
  inputs."stomp".type = "github";
  inputs."stomp".owner = "riinr";
  inputs."stomp".repo = "flake-nimble";
  inputs."stomp".ref = "flake-pinning";
  inputs."stomp".dir = "nimpkgs/s/stomp";

  outputs = { self, nixpkgs, src-cittadino-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cittadino-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}