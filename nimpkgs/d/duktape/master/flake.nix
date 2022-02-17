{
  description = ''wrapper for the Duktape embeddable Javascript engine'';
  inputs.src-duktape-master.flake = false;
  inputs.src-duktape-master.type = "github";
  inputs.src-duktape-master.owner = "manguluka";
  inputs.src-duktape-master.repo = "duktape-nim";
  inputs.src-duktape-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-duktape-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-duktape-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-duktape-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}