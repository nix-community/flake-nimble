{
  description = ''A simple PubSub framework using STOMP.'';
  inputs.src-cittadino-0_1_4.flake = false;
  inputs.src-cittadino-0_1_4.type = "github";
  inputs.src-cittadino-0_1_4.owner = "makingspace";
  inputs.src-cittadino-0_1_4.repo = "cittadino";
  inputs.src-cittadino-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."https://github.com/subsetpark/nim-stomp.git".type = "github";
  inputs."https://github.com/subsetpark/nim-stomp.git".owner = "riinr";
  inputs."https://github.com/subsetpark/nim-stomp.git".repo = "flake-nimble";
  inputs."https://github.com/subsetpark/nim-stomp.git".ref = "flake-pinning";
  inputs."https://github.com/subsetpark/nim-stomp.git".dir = "nimpkgs/h/https://github.com/subsetpark/nim-stomp.git";

  outputs = { self, nixpkgs, src-cittadino-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cittadino-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}