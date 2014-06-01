function PollListCtrl($scope) {
	$scope.polls = [];
}

function PollItemCtrl($scope, $routeParams) {
	$scope.poll = {};
	$scope.vote = function() {};
}

function PollNewCtrl($scope) {
	$scope.poll = {
		question: "",
		choices: [{text: ""}, {text: ""}, {text: ""}]
	};
	$scope.addChoice = function() {
		$scope.poll.choices.push({text: "" });
	};
	$scope.createPoll = function() {};
}