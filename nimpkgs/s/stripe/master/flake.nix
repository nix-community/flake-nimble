{
  description = ''Nim client for Stripe.com'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stripe-master.flake = false;
  inputs.src-stripe-master.type = "github";
  inputs.src-stripe-master.owner = "iffy";
  inputs.src-stripe-master.repo = "nim-stripe";
  inputs.src-stripe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stripe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stripe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stripe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}