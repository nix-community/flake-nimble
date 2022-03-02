{
  description = ''A simple and free whois client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-whois-master.flake = false;
  inputs.src-whois-master.type = "other";
  inputs.src-whois-master.owner = "Thisago";
  inputs.src-whois-master.repo = "whois.nim";
  inputs.src-whois-master.ref = "refs/heads/master";
  inputs.src-whois-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-whois-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-whois-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-whois-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}