{
  description = ''A simple PubSub framework using STOMP.'';
  inputs.src-cittadino-master.flake = false;
  inputs.src-cittadino-master.type = "github";
  inputs.src-cittadino-master.owner = "makingspace";
  inputs.src-cittadino-master.repo = "cittadino";
  inputs.src-cittadino-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/subsetpark/nim-stomp.git".type = "github";
  inputs."https://github.com/subsetpark/nim-stomp.git".owner = "riinr";
  inputs."https://github.com/subsetpark/nim-stomp.git".repo = "flake-nimble";
  inputs."https://github.com/subsetpark/nim-stomp.git".ref = "flake-pinning";
  inputs."https://github.com/subsetpark/nim-stomp.git".dir = "nimpkgs/h/https://github.com/subsetpark/nim-stomp.git";

  outputs = { self, nixpkgs, src-cittadino-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cittadino-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cittadino-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}