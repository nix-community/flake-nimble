{
  description = ''Nim client for Stripe.com'';
  inputs.src-stripe-master.flake = false;
  inputs.src-stripe-master.type = "github";
  inputs.src-stripe-master.owner = "iffy";
  inputs.src-stripe-master.repo = "nim-stripe";
  inputs.src-stripe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stripe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stripe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stripe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}