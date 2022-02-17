{
  description = ''Wraps the bcrypt (blowfish) library for creating encrypted hashes (useful for passwords)'';
  inputs.src-bcrypt-master.flake = false;
  inputs.src-bcrypt-master.type = "github";
  inputs.src-bcrypt-master.owner = "ithkuil";
  inputs.src-bcrypt-master.repo = "bcryptnim";
  inputs.src-bcrypt-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-bcrypt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}