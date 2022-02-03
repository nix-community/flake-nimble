{
  description = ''Syslog module.'';
  inputs.src-syslog-0_0_5.flake = false;
  inputs.src-syslog-0_0_5.type = "github";
  inputs.src-syslog-0_0_5.owner = "FedericoCeratto";
  inputs.src-syslog-0_0_5.repo = "nim-syslog";
  inputs.src-syslog-0_0_5.ref = "refs/tags/0.0.5";
  
  
  inputs."nake".url = "path:../../../n/nake";
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, src-syslog-0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syslog-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-syslog-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}