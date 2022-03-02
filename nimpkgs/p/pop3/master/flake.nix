{
  description = ''POP3 client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pop3-master.flake = false;
  inputs.src-pop3-master.type = "github";
  inputs.src-pop3-master.owner = "FedericoCeratto";
  inputs.src-pop3-master.repo = "nim-pop3";
  inputs.src-pop3-master.ref = "refs/heads/master";
  inputs.src-pop3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pop3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pop3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pop3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}