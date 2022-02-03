{
  description = ''A simple and free whois client'';
  inputs.src-whois-master.flake = false;
  inputs.src-whois-master.type = "other";
  inputs.src-whois-master.owner = "Thisago";
  inputs.src-whois-master.repo = "whois.nim";
  inputs.src-whois-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-whois-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-whois-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-whois-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}