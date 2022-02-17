{
  description = ''A simple PubSub framework using STOMP.'';
  inputs.src-cittadino-0_1_2.flake = false;
  inputs.src-cittadino-0_1_2.type = "github";
  inputs.src-cittadino-0_1_2.owner = "makingspace";
  inputs.src-cittadino-0_1_2.repo = "cittadino";
  inputs.src-cittadino-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."https://github.com/subsetpark/nim-stomp.git".type = "github";
  inputs."https://github.com/subsetpark/nim-stomp.git".owner = "riinr";
  inputs."https://github.com/subsetpark/nim-stomp.git".repo = "flake-nimble";
  inputs."https://github.com/subsetpark/nim-stomp.git".ref = "flake-pinning";
  inputs."https://github.com/subsetpark/nim-stomp.git".dir = "nimpkgs/h/https://github.com/subsetpark/nim-stomp.git";

  outputs = { self, nixpkgs, src-cittadino-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cittadino-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}