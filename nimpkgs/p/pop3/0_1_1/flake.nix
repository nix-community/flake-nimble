{
  description = ''POP3 client library'';
  inputs.src-pop3-0_1_1.flake = false;
  inputs.src-pop3-0_1_1.type = "github";
  inputs.src-pop3-0_1_1.owner = "FedericoCeratto";
  inputs.src-pop3-0_1_1.repo = "nim-pop3";
  inputs.src-pop3-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-pop3-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pop3-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pop3-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}