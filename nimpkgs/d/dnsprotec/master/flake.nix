{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dnsprotec-master.flake = false;
  inputs.src-dnsprotec-master.type = "github";
  inputs.src-dnsprotec-master.owner = "juancarlospaco";
  inputs.src-dnsprotec-master.repo = "nim-dnsprotec";
  inputs.src-dnsprotec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsprotec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsprotec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsprotec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}