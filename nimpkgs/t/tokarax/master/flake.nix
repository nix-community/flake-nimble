{
  description = ''Converts HTML to Karax representation'';
  inputs.src-tokarax-master.flake = false;
  inputs.src-tokarax-master.type = "github";
  inputs.src-tokarax-master.owner = "thisago";
  inputs.src-tokarax-master.repo = "tokarax";
  inputs.src-tokarax-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-tokarax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tokarax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tokarax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}