{
  description = ''Yahoo! Weather API wrapper'';
  inputs.src-yahooweather-master.flake = false;
  inputs.src-yahooweather-master.type = "github";
  inputs.src-yahooweather-master.owner = "achesak";
  inputs.src-yahooweather-master.repo = "nim-yahooweather";
  inputs.src-yahooweather-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-yahooweather-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yahooweather-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-yahooweather-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}