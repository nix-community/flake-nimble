{
  description = ''parse datetime from various resources'';
  inputs.src-datetime_parse-master.flake = false;
  inputs.src-datetime_parse-master.type = "github";
  inputs.src-datetime_parse-master.owner = "bung87";
  inputs.src-datetime_parse-master.repo = "datetime_parse";
  inputs.src-datetime_parse-master.ref = "refs/heads/master";
  
  
  inputs."timezones".type = "github";
  inputs."timezones".owner = "riinr";
  inputs."timezones".repo = "flake-nimble";
  inputs."timezones".ref = "flake-pinning";
  inputs."timezones".dir = "nimpkgs/t/timezones";

  outputs = { self, nixpkgs, src-datetime_parse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-datetime_parse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-datetime_parse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}