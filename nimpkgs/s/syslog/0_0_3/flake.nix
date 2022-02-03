{
  description = ''Syslog module.'';
  inputs.src-syslog-0_0_3.flake = false;
  inputs.src-syslog-0_0_3.type = "github";
  inputs.src-syslog-0_0_3.owner = "FedericoCeratto";
  inputs.src-syslog-0_0_3.repo = "nim-syslog";
  inputs.src-syslog-0_0_3.ref = "refs/tags/0.0.3";
  
  
  inputs."nake".url = "path:../../../n/nake";
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, src-syslog-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syslog-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syslog-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}