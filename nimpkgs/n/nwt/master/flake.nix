{
  description = ''experiment to build a jinja like template parser'';
  inputs.src-nwt-master.flake = false;
  inputs.src-nwt-master.type = "github";
  inputs.src-nwt-master.owner = "enthus1ast";
  inputs.src-nwt-master.repo = "nimWebTemplates";
  inputs.src-nwt-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/enthus1ast/nimcommandparser".type = "github";
  inputs."https://github.com/enthus1ast/nimcommandparser".owner = "riinr";
  inputs."https://github.com/enthus1ast/nimcommandparser".repo = "flake-nimble";
  inputs."https://github.com/enthus1ast/nimcommandparser".ref = "flake-pinning";
  inputs."https://github.com/enthus1ast/nimcommandparser".dir = "nimpkgs/h/https://github.com/enthus1ast/nimcommandparser";

  outputs = { self, nixpkgs, src-nwt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}